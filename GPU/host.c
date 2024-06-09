#include <stdio.h>
#include <CL/opencl.h>

int main(void) {
	cl_device_id gpu;
	cl_context context;
	cl_int result;
	cl_command_queue queue;
	cl_program program;
	FILE *fp;
	char kernel_code[1024];
	clGetDeviceIDs(
		NULL, CL_DEVICE_TYPE_GPU, 1, &gpu, NULL
	);
	context = clCreateContext(
		NULL, 1, &gpu, NULL, NULL, &result
	);
	if(result != CL_SUCCESS) {
		printf("couldn't create context\n");
		return 1;
	}
	queue = clCreateCommandQueue(
		context, gpu, 0, &result
	);
	if (result != CL_SUCCESS) {
		printf("couldn't create command queue\n");
		return 2;
	}
	fp = fopen("kernel.cl", "r");
	fread(kernel_code, 1, 1024, fp);
	fclose(fp);
	printf("%s\n", kernel_code);

	program = clCreateProgramWithSource(
		context, 1, (const char *[]) {kernel_code}, NULL, &result
	);
	if (result != CL_SUCCESS) {
		printf("Couldn't create program\n");
		return 3;
	}
	clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
}
