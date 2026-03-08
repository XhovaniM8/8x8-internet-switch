# 8x8 Internet Switch

RTL implementation of an 8-port internet switch/router in Verilog.

Written for ELEN603 (Digital Design), November 2015.

## Architecture

Packets arrive serially on 8 input ports and are routed to one of 8 output ports based on a 4-bit destination address. Each port pair (input/output) operates independently.

**Data path:**

```
Input Ports (x8)
    |
    v
Demux (1-to-8, x8)  <-- Switch fabric
    |
    v
Mux (8-to-1, x8)
    |
    v
FIFO (x8)
    |
    v
Output Ports (x8)
```

**Arbitration:** A round-robin arbiter (`DW_arb_rr`) per output port selects which input wins access when multiple inputs target the same output.

## Files

```
src/
    switch.v        Top-level router module
    input.v         Serial-to-parallel input port (portin)
    output.v        Parallel-to-serial output port (portout)
    fifo.v          32-bit wide, 128-deep FIFO
    demux.v         1-to-8 payload demultiplexer
    mux.v           8-to-1 payload multiplexer
    eight_or.v      8-input OR (32-bit, for payload path)
    eight_or_arb.v  8-input OR (1-bit, for arbitration valid signal)
lib/
    lsi_10k.v       LSI 10k cell library (vendor primitives)
```

## Interface

| Port        | Width | Direction | Description                  |
|-------------|-------|-----------|------------------------------|
| `clock`     | 1     | in        | System clock                 |
| `reset_n`   | 1     | in        | Active-low reset             |
| `frame_n`   | 8     | in        | Frame signal, one per port   |
| `valid_n`   | 8     | in        | Valid signal, one per port   |
| `di`        | 8     | in        | Serial data in, one per port |
| `dout`      | 8     | out       | Serial data out, one per port|
| `valido_n`  | 8     | out       | Output valid signal          |
| `frameo_n`  | 8     | out       | Output frame signal          |

## Packet Format

Each packet is 36 bits transmitted serially: 4-bit destination address followed by 32-bit payload.
