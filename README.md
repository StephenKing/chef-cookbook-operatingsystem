Operatingsystem-specific Configuration
======================================

This cookbook provides OS-specific configurations.

After including the `operatingsystem::default` recipe, the recipe for the platform where Chef is running on is automatically included (e.g. `operatingsystem::debian`).

This information is coming from Ohai data, namely `node[:platform]`.

If no recipe `operatingsystem::#{node[:platform]}` exists, then this fact is silently ignored (as we do not want to add a recipe, if we need no customizations).