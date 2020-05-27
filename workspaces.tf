/**
 * This is a hacky way of binding specific variable
 * values to different Terraform workspaces.
 *
 * Details:
 * https://github.com/hashicorp/terraform/issues/15966
 */

locals {
  env = {
    defaults = {
      hosts_count = 1 /* number of hosts in each DC */

      do_size = "ecs.t5-lc1m1.small" /* DigitalOcean */
      ac_size = "ecs.sn1ne.large"    /* Alibaba Cloud */
      gc_size = "n1-standard-1"      /* Google Cloud */
    }

    # For testing, inherits defaults
    test = {}
  }
}