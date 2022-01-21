/**
 * @name GPL Code
 * @description Find code with a GPL license
 * @kind problem
 * @problem.severity warning
 * @precision high
 * @id cpp/gpl
 * @tags maintainability
 */

import cpp

from Comment c
where c.getContents().regexpMatch("(?si).*\\bTODO\\b.*")
select c.getFile(), "Contains GPL code"
