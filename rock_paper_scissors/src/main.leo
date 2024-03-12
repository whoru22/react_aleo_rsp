// The 'rsc_whoru' program.
program rsc_whoru.aleo {
    struct Message {
        first: field,
        second: field
    }

    transition main(m: Message) -> field {
        let m1:Message = Message {
            first: m.first,
            second: m.second
        };

        if(m1.first == 0field && m1.second == 2field) {
            return m1.first;
        }

        if(m1.first == 0field && m1.second == 5field) {
            return m1.second;
        }

        if(m1.first == 0field && m1.second == 0field) {
            return 10field;
        }

        if (m1.first == 2field && m1.second == 0field) {
            return m1.second;
        }

        if(m1.first == 2field && m1.second == 5field) {
            return m1.first;
        }

        if(m1.first == 2field && m1.second == 2field) {
            return 10field;
        }

        if(m1.first == 5field && m1.second == 2field) {
            return m1.second;
        }

        if(m1.first == 5field && m1.second == 0field) {
            return m1.first;
        }

        if(m1.first == 5field && m1.second == 5field) {
            return 10field;
        }

        return m1.first + m1.second;
    }
}
