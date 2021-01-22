//
//  Renderer_00_Void.swift
//  SatinSpirit
//
//  Created by Felix Akira Green on 1/20/21.
//

import Metal
import MetalKit

import Forge
import Satin


class Renderer_00_Void: Forge.Renderer, ObservableObject {

	lazy var scene: Object = Object()
	 
	lazy var context: Context = {
		Context(device, sampleCount, colorPixelFormat, depthPixelFormat, stencilPixelFormat)
	}()

	lazy var camera: OrthographicCamera = {
		OrthographicCamera()
	}()
	 
	lazy var cameraController: OrthographicCameraController = {
		OrthographicCameraController(camera: camera, view: mtkView)
	}()
	 
	lazy var renderer: Satin.Renderer = {
		let renderer = Satin.Renderer(context: context, scene: scene, camera: camera)
		renderer.setClearColor([0.0, 0.0, 0.0, 1])
		return renderer
	}()
	 
	override func setupMtkView(_ metalKitView: MTKView) {
		metalKitView.sampleCount = 1
		metalKitView.depthStencilPixelFormat = .invalid
		metalKitView.preferredFramesPerSecond = 60
	}
	 
	override func setup() {
		// Setup things here
	}
	 
	override func update() {
		cameraController.update()
	}
	 
	override func draw(_ view: MTKView, _ commandBuffer: MTLCommandBuffer) {
		guard let renderPassDescriptor = view.currentRenderPassDescriptor else { return }
		renderer.draw(renderPassDescriptor: renderPassDescriptor, commandBuffer: commandBuffer)
	}
	 
	override func resize(_ size: (width: Float, height: Float)) {
		let hw = size.width * 0.5
		let hh = size.height * 0.5
		camera.update(left: -hw, right: hw, bottom: -hh, top: hh)
		renderer.resize(size)
	}
}
