import { parse } from '@brillout/json-serializer/parse'
import { hasProp, assert, assertUsage, objectAssign } from '../server-routing-runtime/utils.js'

export { getPageContextSerializedInHtml }

function getPageContextSerializedInHtml(): { _pageId: string; _hasPageContextFromServer: true } {
  // elem should exist because:
  // 1. <script id="vike_pageContext" type="application/json"> appears before the <script> that loads Vike's client runtime (which includes this file)
  // 2. <script id="vike_pageContext" type="application/json"> is neither async nor defer
  // See https://github.com/vikejs/vike/pull/1271
  const id = 'vike_pageContext'
  const elem = document.getElementById(id)
  assertUsage(
    elem,
    // It seems like it can be missing because of malformed HTML: https://github.com/vikejs/vike/issues/913
    `Couldn't find #${id} (which Vike automatically injects in the HTML): make sure it exists (i.e. don't remove it and make sure your HTML isn't malformed)`
  )
  const pageContextJson = elem.textContent
  assert(pageContextJson)

  const pageContextSerializedInHtml = parse(pageContextJson)
  assert(hasProp(pageContextSerializedInHtml, '_pageId', 'string'))

  objectAssign(pageContextSerializedInHtml, {
    _hasPageContextFromServer: true as const
  })

  return pageContextSerializedInHtml
}
