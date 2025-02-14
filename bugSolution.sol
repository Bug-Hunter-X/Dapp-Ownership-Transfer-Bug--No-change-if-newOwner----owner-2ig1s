function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  // Explicitly check if transfer is needed
  if (owner != newOwner) {
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }
} 