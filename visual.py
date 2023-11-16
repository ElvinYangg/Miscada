import vtk
import os
import glob

def read_vtk_file(file_path):
    reader = vtk.vtkDataSetReader()
    reader.SetFileName(file_path)
    reader.ReadAllVectorsOn()
    reader.ReadAllScalarsOn()
    reader.Update()

    return reader.GetOutput()

def visualize_simulation(vtk_files):
    colors = vtk.vtkNamedColors()

    renderer = vtk.vtkRenderer()
    render_window = vtk.vtkRenderWindow()
    render_window.AddRenderer(renderer)

    render_window_interactor = vtk.vtkRenderWindowInteractor()
    render_window_interactor.SetRenderWindow(render_window)

    for i, vtk_file in enumerate(vtk_files):
        data = read_vtk_file(vtk_file)

        scalar_data = data.GetPointData().GetScalars()

        geometry_filter = vtk.vtkStructuredGridGeometryFilter()
        geometry_filter.SetInputData(data)
        geometry_filter.Update()

        mapper = vtk.vtkPolyDataMapper()
        mapper.SetInputConnection(geometry_filter.GetOutputPort())
        mapper.SetScalarModeToUsePointData()

        actor = vtk.vtkActor()
        actor.SetMapper(mapper)
        actor.GetProperty().SetColor(colors.GetColor3d("RoyalBlue"))

        renderer.AddActor(actor)
        renderer.ResetCamera()
        render_window.Render()

        render_window.SetWindowName(f"Iteration {i}")
        render_window.Render()
        
        # Capture the contents of the render window
        window_to_image_filter = vtk.vtkWindowToImageFilter()
        window_to_image_filter.SetInput(render_window)
        window_to_image_filter.Update()
        
        # Save the captured image to a file
        writer = vtk.vtkPNGWriter()
        writer.SetFileName(f"screenshot_{i:05d}.png")
        writer.SetInputConnection(window_to_image_filter.GetOutputPort())
        writer.Write()


        render_window_interactor.Start()

if __name__ == "__main__":
    vtk_files = glob.glob("output_*.vtk")
    vtk_files.sort()

    if not vtk_files:
        print("No VTK files found.")
    else:
        visualize_simulation(vtk_files)
