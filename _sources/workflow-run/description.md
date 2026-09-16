# OSPD Workflow Run

Provenance of a **workflow or process execution** in the OSPD / EOAP context.

This building block profiles the Wf4Ever
[`wfprov:WorkflowRun`](https://ogcincubator.github.io/bblocks-wf4ever/bblock/ogc.bbr.wf4ever.wfprov.WorkflowRun)
— which extends W3C PROV `prov:Activity` — and adds the OSPD constraints that
make an execution trace actionable:

- `describedByWorkflow` (**required**) — the workflow description
  (`wfdesc:Workflow`, e.g. a CWL / OGC API Processes process) that was executed.
- `wasEnactedBy` (**required**) — the workflow engine
  (`wfprov:WorkflowEngine`) that ran it.
- `startedAtTime` / `endedAtTime` (**required**) — the temporal bounds; a
  provenance record only describes finished executions.
- `status` (**required**) — the terminal status, constrained to the OGC API -
  Processes vocabulary (`successful`, `failed`, `dismissed`).
- `jobID` (*optional*) — the OGC API - Processes job identifier.

It also inherits the standard execution properties: `usedInput`,
`hadSubProcessRun`.
