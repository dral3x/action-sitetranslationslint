<?php

// Example of output that the linter should generate for this project
echo "app/index.php:5: warning: Missing \"es_ES\" translation of localized string \"How are you?\".\n";
echo "app/index.php:5: warning: Missing \"it_IT\" translation of localized string \"How are you?\".\n";
echo "app/index.php:7: error: Missing all translations of localized string \"Goodbye\".\n";
echo "i18n/en_US/messages.po:5: warning: Unused localized string \"Howdy\".\n";

// Exit codes:
// 0 -> found no warnings nor errors
// 1 -> found at least one warning
// 2 -> found at least one error
exit(2);