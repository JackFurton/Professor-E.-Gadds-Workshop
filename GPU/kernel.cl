kernel void square_root(global float *in, global float *out) {
	int id = get_global_id(0);
	out[id] = sqrt(in[id]);
}
