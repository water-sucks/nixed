_final: prev: {
  subversionClient = prev.subversionClient.overrideAttrs (_: {
    # remove vendored swig-3 files as these will shadow the swig provided
    # ones and result in compile errors
    postPatch = ''
      rm subversion/bindings/swig/proxy/{perlrun.swg,pyrun.swg,python.swg,rubydef.swg,rubyhead.swg,rubytracking.swg,runtime.swg,swigrun.swg}
    '';
  });
}
