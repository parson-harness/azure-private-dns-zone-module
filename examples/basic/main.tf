module "dns" {
  source              = "../../"
  name                = "foo.mycorp.com"
  resource_group_name = "dns-test-rg"
  tags = {
    environment = "test"
  }
}