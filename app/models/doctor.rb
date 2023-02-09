class Doctor < ApplicationRecord
    has_many :appointments, dependent: :destroy # Supprime tous les appointments si le doctor est supprimé de la db
    has_many :patients, through: :appointments
end
