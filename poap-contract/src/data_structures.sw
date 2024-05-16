library data_structures;

pub enum State {
    Initialized: (),
    Uninitialized: (),
}

impl core::ops::Eq for State {
    fn eq(self, other: Self) -> bool {
        match (self, other) {
            (State::Initialized, State::Initialized) => true,
            (State::Uninitialized, State::Uninitialized) => true,
            _ => false,
        }
    }
}

pub struct TokenMetadata {
    // This is left as an example. Support for dynamic length string is needed here    
    title: str[11],
    description: str[266],
    website: str[25],
    start_date: str[10],
    end_date: str[10],
    event_type: u64,
    image: str[32],
}

impl TokenMetadata {
    pub fn new() -> Self {
        Self {
            title: "A FUEL POAP",
            description: "One of the advantages of implementing a POAP on Fuel is the fast confirmation times offered by the platform. This means that event organizers can distribute POAP tokens to attendees quickly and without issues, even if a large number of tokens need to be distributed.",
            website: "https://www.fuel.network/",
            start_date: "03/24/2023",
            end_date: "03/26/2023",
            event_type: 1,
            img: "ipfs/QmZj1ZiBrYGUzRxPaNBj3Sb12F2MiN51NyoQ86JGiXWSTH"
        }
    }
}
