cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  steroid-type-2-diabetes-exclusion-codes---primary:
    run: steroid-type-2-diabetes-exclusion-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  gestational-type-2-diabetes-exclusion-codes---primary:
    run: gestational-type-2-diabetes-exclusion-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: steroid-type-2-diabetes-exclusion-codes---primary/output
  type-2-diabetes-exclusion-codes-mother---primary:
    run: type-2-diabetes-exclusion-codes-mother---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: gestational-type-2-diabetes-exclusion-codes---primary/output
  pancreatic-type-2-diabetes-exclusion-codes---primary:
    run: pancreatic-type-2-diabetes-exclusion-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-mother---primary/output
  nephrogenic-type-2-diabetes-exclusion-codes---primary:
    run: nephrogenic-type-2-diabetes-exclusion-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: pancreatic-type-2-diabetes-exclusion-codes---primary/output
  type-2-diabetes-exclusion-codes-mellitus---primary:
    run: type-2-diabetes-exclusion-codes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: nephrogenic-type-2-diabetes-exclusion-codes---primary/output
  type-2-diabetes-exclusion-codes-malnutritionrelated---primary:
    run: type-2-diabetes-exclusion-codes-malnutritionrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-mellitus---primary/output
  type-2-diabetes-exclusion-codes-youth---primary:
    run: type-2-diabetes-exclusion-codes-youth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-malnutritionrelated---primary/output
  type-2-diabetes-exclusion-codes---primary:
    run: type-2-diabetes-exclusion-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-youth---primary/output
  type-2-diabetes-exclusion-codes-manife---primary:
    run: type-2-diabetes-exclusion-codes-manife---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes---primary/output
  type-2-diabetes-exclusion-codes-insipidu---primary:
    run: type-2-diabetes-exclusion-codes-insipidu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-manife---primary/output
  secondary-type-2-diabetes-exclusion-codes---primary:
    run: secondary-type-2-diabetes-exclusion-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-insipidu---primary/output
  type-2-diabetes-exclusion-codes-ovary---primary:
    run: type-2-diabetes-exclusion-codes-ovary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: secondary-type-2-diabetes-exclusion-codes---primary/output
  type-2-diabetes-exclusion-codes-infant---primary:
    run: type-2-diabetes-exclusion-codes-infant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-ovary---primary/output
  type-2-diabetes-exclusion-codes-convulsions---primary:
    run: type-2-diabetes-exclusion-codes-convulsions---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-infant---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-exclusion-codes-convulsions---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
