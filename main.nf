#!/usr/bin/env nextflow 

/*
 * As single workflow wrapper for turning modules into standalone pipelines
 */


/*
 * Default pipeline parameters. They can be overriden on the command line eg.
 * given `params.foo` specify on the run command line `--foo some_value`.
 */

params.reads = "$baseDir/data/ggal/ggal_*_{1,2}.fq"
params.outdir = "results"

log.info """\
 F A S T Q C - N F   P I P E L I N E
 ===================================
 reads        : ${params.reads}
 outdir       : ${params.outdir}
 """

// import modules
include { FASTQC } from './modules/fastqc'

/* 
 * main script flow
 */
workflow {
  read_pairs_ch = channel.fromFilePairs( params.reads, checkIfExists: true )
  read_pairs_ch.map{ read_pair -> [[id:"${read_pair[0]}"], read_pair[1]] }.set{ meta_ch }
  FASTQC( meta_ch )

}
