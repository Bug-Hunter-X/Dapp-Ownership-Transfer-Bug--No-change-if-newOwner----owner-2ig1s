function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  // Transfer ownership only if the new owner address is different than the existing owner
  if (newOwner != owner) {
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }
}