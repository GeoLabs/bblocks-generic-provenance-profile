# OSPD Execution Provenance

An **integrated execution provenance bundle** for the OSPD / EOAP context.

This is the umbrella building block that harmonizes the three aggregated
registers into a single, self-contained record of a processing run:

- `run` (**required**) — the workflow execution, an
  [OSPD Workflow Run](../workflow-run) (Wf4Ever `wfprov`, built on W3C PROV).
- `engine` (**required**) — the
  [`wfprov:WorkflowEngine`](https://ogcincubator.github.io/bblocks-wf4ever/bblock/ogc.bbr.wf4ever.wfprov.WorkflowEngine)
  that enacted the run.
- `outputs` (**required**, ≥ 1) — the EO artifacts produced, as
  [OSPD EO Artifacts](../eoap-artifact) (EOAP-typed).
- `inputs` (*optional*) — the EO artifacts consumed.

It therefore exercises **all three imported registers** at once: W3C PROV
(`bblock-prov-schema`), workflow provenance (`bblocks-wf4ever`) and EO data
typing (`bblocks-eoap-cct`).
