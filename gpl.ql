/**
 * @name Linking with GPL licensed library
 * @description These header files contains a GPL liceanse
 * @kind problem
 * @problem.severity warning
 * @precision high
 * @id cpp/gpl
 * @tags maintainability
 */

import cpp

from Comment c, Include i
where c.getContents().regexpMatch("(?si).*\\bGNU General Public License\\b.*") and (not c.getContents().regexpMatch("(?si).*\\bGCC Runtime Library Exception\\b.*")) and c.getFile() = i.getIncludedFile()
select i.getFile(), "GPL licensed code in " + i.getIncludeText()
