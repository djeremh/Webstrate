###
Copyright 2014 Clemens Nylandsted Klokmose, Aarhus University

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
###

$(document).ready () =>
    sharejsDoc = window.location.pathname[1..window.location.pathname.length]
    document.title = "Webstrate - " + sharejsDoc
    if sharejsDoc.length == 0
        throw "Error: No document id provided"

    socket = new BCSocket null, {reconnect: true}
    window._sjs = new sharejs.Connection socket

    doc = _sjs.get 'webstrates', sharejsDoc
    container = document.querySelector ".container"

    $(".header").find('h1').append(" - " + sharejsDoc)
    doc.subscribe()
    doc.whenReady () ->
        window.dom2shareInstance = new DOM2Share doc, container, () ->
            event = new CustomEvent "loaded", { "detail": "The share.js document has finished loading" }
            document.dispatchEvent event
            editor = new MediumEditor(document.getElementById("wysiwyg-editor"), {
                'buttons': ['bold', 'italic', 'underline', 'superscript', 'subscript', 'anchor', 'image', 'header1', 'header2', 'quote', 'orderedlist', 'unorderedlist', 'pre', 'indent', 'outdent']
            })
