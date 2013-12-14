Rem MoveLayer.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to move a layer.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.Layers.Add
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Rem Given a document "myDocument" with at least two layers...
	Set myLayerA = myDocument.Layers.Item(1)
    Set myLayerB = myDocument.Layers.Item(2)
    myLayerA.Move idLocationOptions.idAfter,myLayerB 
	Rem <fragment>
End Function
Function myTeardown(myInDesign)
End Function