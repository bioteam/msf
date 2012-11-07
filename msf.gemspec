# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "msf"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["William Van Etten"]
  s.date = "2012-11-07"
  s.description = "An MSF file is sqlite3 dtabase. ActiveRecord is a great ORM for accessing the data. Much taken from Angel Pizarro's thermo_msf."
  s.email = "bill@bioteam.net"
  s.executables = ["ibspectra"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/ibspectra",
    "erd/config.png",
    "erd/empty.png",
    "erd/erd.png",
    "erd/msf.xcdatamodeld/.xccurrentversion",
    "erd/msf.xcdatamodeld/msf.xcdatamodel/contents",
    "erd/schema.txt",
    "lib/msf.rb",
    "lib/msf/models.rb",
    "lib/msf/models/amino_acid.rb",
    "lib/msf/models/amino_acid_modification.rb",
    "lib/msf/models/amino_acid_modification_neutral_loss.rb",
    "lib/msf/models/amino_acid_modifications_amino_acid_nls.rb",
    "lib/msf/models/amino_acid_modifications_amino_acids.rb",
    "lib/msf/models/annotation_data_version.rb",
    "lib/msf/models/annotation_dataset.rb",
    "lib/msf/models/annotation_group.rb",
    "lib/msf/models/annotation_type.rb",
    "lib/msf/models/chromatogram.rb",
    "lib/msf/models/custom_data_field.rb",
    "lib/msf/models/custom_data_peptide.rb",
    "lib/msf/models/custom_data_processing_node.rb",
    "lib/msf/models/custom_data_protein.rb",
    "lib/msf/models/custom_data_spectrum.rb",
    "lib/msf/models/enzyme.rb",
    "lib/msf/models/fasta_file.rb",
    "lib/msf/models/file_info.rb",
    "lib/msf/models/mass_peak.rb",
    "lib/msf/models/peptide.rb",
    "lib/msf/models/peptide_score.rb",
    "lib/msf/models/peptide_score_decoy.rb",
    "lib/msf/models/peptide_terminal_modification.rb",
    "lib/msf/models/peptides_amino_acid_modifications.rb",
    "lib/msf/models/peptides_proteins.rb",
    "lib/msf/models/processing_node.rb",
    "lib/msf/models/processing_node_score.rb",
    "lib/msf/models/protein.rb",
    "lib/msf/models/protein_annotation.rb",
    "lib/msf/models/protein_identification_group.rb",
    "lib/msf/models/protein_score.rb",
    "lib/msf/models/reporter_ion_quan_result.rb",
    "lib/msf/models/reporter_ion_quan_result_search_spectrum.rb",
    "lib/msf/models/scan_event.rb",
    "lib/msf/models/schema_info.rb",
    "lib/msf/models/spectrum.rb",
    "lib/msf/models/spectrum_header.rb",
    "lib/msf/models/spectrum_score.rb",
    "lib/msf/models/taxonomy_name.rb",
    "lib/msf/models/workflow_info.rb",
    "lib/msf/models/workflow_message.rb",
    "lib/msf/msf.rb",
    "lib/msf/sql/enzyme_cleavage_specificity.rb",
    "lib/msf/sql/false_discovery_rate.rb",
    "lib/msf/sql/fasta_file_protein_annotation.rb",
    "lib/msf/sql/mass_peak_relation.rb",
    "lib/msf/sql/peptide_amino_acid_modification_decoy.rb",
    "lib/msf/sql/peptide_decoy.rb",
    "lib/msf/sql/peptide_terminal_modification_decoy.rb",
    "lib/msf/sql/precursor_ion_quan_result.rb",
    "lib/msf/sql/precursor_ion_quan_result_event_spectrum.rb",
    "lib/msf/sql/precursor_ion_quan_result_search_spectrum.rb",
    "lib/msf/sql/processing_node_filter_parameter.rb",
    "lib/msf/sql/processing_node_interface.rb",
    "lib/msf/sql/processing_node_parameter.rb",
    "lib/msf/sql/processing_node_spectrum.rb",
    "lib/msf/sql/quan_result.rb",
    "lib/msf/sql/result_filter_set.rb",
    "lib/msf/sql/taxonomy_node.rb",
    "spec/msf_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/vanetten/msf"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "ActiveRecord access to MSF file (sqlite3 database)."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, ["~> 1.2.1"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.2.0"])
      s.add_runtime_dependency(%q<sqlite3>, ["~> 1.3.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<debugger>, [">= 1.2.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
      s.add_development_dependency(%q<redcarpet>, ["~> 2.2.2"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.2.1"])
      s.add_dependency(%q<activerecord>, ["~> 3.2.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<debugger>, [">= 1.2.0"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
      s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.2.1"])
    s.add_dependency(%q<activerecord>, ["~> 3.2.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<debugger>, [">= 1.2.0"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
    s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
  end
end
