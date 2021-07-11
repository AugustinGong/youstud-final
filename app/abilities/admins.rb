Canard::Abilities.for(:admin) do
  can [:create, :read, :update, :destroy], Book
  can [:destroy], User
end
