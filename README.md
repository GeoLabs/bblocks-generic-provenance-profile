# OGC Building Blocks - Generic Provenance

An OSPD / EOAP **provenance profile** built on the canonical
[W3C PROV](https://www.w3.org/TR/prov-overview/) JSON schema building block and
aggregating complementary provenance registers.

## Aggregated registers (imports)

| Register | Prefix | Role |
| -------- | ------ | ---- |
| [bblock-prov-schema](https://github.com/ogcincubator/bblock-prov-schema) | `ogc.ogc-utils.prov*` | Canonical W3C PROV-O schemas this register profiles. |
| [bblocks-wf4ever](https://github.com/ogcincubator/bblocks-wf4ever) | `ogc.bbr.wf4ever.*` | Workflow-level provenance (wfdesc / wfprov / ro). |
| [bblocks-eoap-cct](https://github.com/ogcincubator/bblocks-eoap-cct) | `eoap.cct.*` | EOAP CWL custom types (STAC, GeoJSON, bbox) for typing entities. |

## Building blocks

| Building block | Identifier | Built on |
| -------------- | ---------- | -------- |
| Entity     | `ogc.bbr.provenance.entity`     | profile of `ogc.ogc-utils.prov-entity` |
| Activity   | `ogc.bbr.provenance.activity`   | profile of `ogc.ogc-utils.prov-activity` |
| Agent      | `ogc.bbr.provenance.agent`      | profile of `ogc.ogc-utils.prov-agent` |
| Provenance | `ogc.bbr.provenance.provenance` | built on the `ogc.ogc-utils.prov` provenance chain |

## Integrated OSPD / EOAP building blocks

These blocks weave the three imported registers together and are the main value
of this profile.

| Building block | Identifier | Combines |
| -------------- | ---------- | -------- |
| OSPD Workflow Run     | `ogc.bbr.provenance.workflow-run`  | profiles `wfprov:WorkflowRun`; requires links to the workflow and engine |
| OSPD EO Artifact      | `ogc.bbr.provenance.eoap-artifact` | profiles `wfprov:Artifact`; adds EOAP `stacItem` / `bbox` typing |
| OSPD Execution Provenance | `ogc.bbr.provenance.execution` | bundle of workflow run + engine + EO input/output artifacts (uses all 3 imports) |

## Contents
- `bblocks-config.yaml` – register configuration
- `_sources/` – the building blocks
- `build.sh` – builds the register and documentation
- `view.sh` – launches the local viewer at http://localhost:9090
- `.github/workflows/build-and-deploy.yml` – (optional) GitHub Pages publishing

## Quick start
```bash
./build.sh
./view.sh # then open http://localhost:9090
```

## Configuration
Update `bblocks-config.yaml`:
- `identifier-prefix`: identifier prefix (`ogc.bbr.provenance`)
- `baseURL`: public URL (GitHub Pages)
- `gitHubBaseURL`: GitHub repository URL

## References
- [W3C PROV Overview](https://www.w3.org/TR/prov-overview/)
- [PROV-O: The PROV Ontology](https://www.w3.org/TR/prov-o/)
- [PROV-DM: The PROV Data Model](https://www.w3.org/TR/prov-dm/)
