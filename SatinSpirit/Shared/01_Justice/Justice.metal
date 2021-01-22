//
//  Justice.metal
//  SatinSpirit
//
//  Created by Felix Akira Green on 1/21/21.
//

#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
//#include "Library/Shapes.metal"

//typedef struct {
//	 float time;
//	 float3 appResolution;
//} CustomUniforms;

//fragment float4 fragmentShader( VertexData in [[stage_in]],
//	 constant CustomUniforms &uniforms [[buffer( FragmentBufferMaterialUniforms )]] )
//{
//	 float2 uv = 2.0 * in.uv - 1.0;
//	 uv.x *= uniforms.appResolution.z;
//	 const float radius = abs( sin( uniforms.time ) );
//	 float result = Circle( uv, radius );
//	 result = smoothstep( 0.0, 0.0 - fwidth( result ), result );
//	 return float4( float3( result ), 1.0 );
//}

struct VertexOut {
	 vector_float4 position [[position]];
	 vector_float4 color;
};


vertex VertexOut vertexShader(const constant vector_float2 *vertexArray [[buffer(0)]], unsigned int vid [[vertex_id]]){
	 
}

fragment vector_float4 fragmentShader(VertexOut interpolated [[stage_in]]){
	 
}
