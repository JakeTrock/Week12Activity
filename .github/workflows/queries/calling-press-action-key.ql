/**
 * @name Tests calling pressActionKey
 * @description Find tests that call a function called "pressActionKey"
 * @kind problem
 * @problem.severity recommendation
 * @id javascript/tests-calling-press-action-key
 */

import javascript

from CallExpr call, Function test
where 
  call.getCalleeName() = "pressActionKey" and
  test.getName().matches("%test%") and
  call.getEnclosingFunction() = test
select test, "This test calls the 'pressActionKey' function."
