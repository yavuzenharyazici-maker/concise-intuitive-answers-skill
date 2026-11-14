# History for mt-expert-level

The earlier turns of this conversation, as a Claude Code transcript. To run the case, save the block below as `history.jsonl` in this folder.

```json
{"parentUuid": null, "isSidechain": false, "type": "user", "uuid": "f0f4fdb9-baf1-5c3b-9e19-a86f8c6d65d8", "timestamp": "2026-01-01T00:00:00.000Z", "userType": "external", "cwd": "/tmp", "sessionId": "be93343b-b428-5ae5-93a1-06b1048b79f0", "version": "2.1.323", "message": {"role": "user", "content": "I compute the eigenvalues of real symmetric matrices with the QR algorithm, after reducing to tridiagonal form. Convergence is slow when I run it unshifted. What shift should I use?"}}
{"parentUuid": "f0f4fdb9-baf1-5c3b-9e19-a86f8c6d65d8", "isSidechain": false, "type": "assistant", "uuid": "a7e34956-eff8-5f27-a551-3a338b34f065", "timestamp": "2026-01-01T00:00:01.000Z", "userType": "external", "cwd": "/tmp", "sessionId": "be93343b-b428-5ae5-93a1-06b1048b79f0", "version": "2.1.323", "message": {"id": "msg_a7e34956eff85f27a5513a33", "type": "message", "role": "assistant", "model": "claude-sonnet-5-5", "content": [{"type": "text", "text": "Use the Wilkinson shift. At each step, take the trailing $2 \\times 2$ block of the tridiagonal matrix and shift by whichever of its two eigenvalues is closer to the last diagonal entry $a_{nn}$. Deflate when the last off-diagonal entry falls below your tolerance."}], "stop_reason": "end_turn", "stop_sequence": null, "usage": {"input_tokens": 0, "output_tokens": 0}}}
```
