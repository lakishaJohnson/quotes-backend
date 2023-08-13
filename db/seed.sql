\c quotes_dev;

INSERT INTO quotes (category, quote, author, source, language, year_quoted, is_favorite) VALUES
('LOVE','You know you''re in love when you can''t fall asleep because reality is finally better than your dreams.','DR. SEUSS','MOVIE: THE LORAX','ENGLISH',1972,TRUE),

('LOVE','Love is always patient and kind. It is never rude or selfish. It does not take offense and is not resentful. Love takes no pleasure in other people''s sins, but delights in the truth. It is always ready to excuse, to trust, to hope, and to endure whatever comes.','CORINTHIANS 1 13:4-7','THE HOLY BIBLE','HEBREW', 53, TRUE),

('LOVE','Love all, trust a few, do wrong to none.','WILLIAM SHAKESPEARE','PLAY: ALL''S WELL THAT ENDS WELL','ENGLISH', 1623, TRUE),

('INSPIRATIONAL','We may encounter many defeats, but we must not be defeated.','MAYA ANGELOU','BOOK: I KNOW WHY the CAGED BIRD SINGS','ENGLISH', 1969, TRUE),

('INSPIRATIONAL','The only thing that feels better than winning is winning when nobody thought you could.','HANK AARON','MLB BOSTON BRAVES','ENGLISH', 1952, TRUE),

('INSPIRATIONAL','If your actions inspire others to dream more, learn more, do more, and become more, you are a leader.', 'JOHN QUINCY ADAMS', 'PAPER: AMERICAN REVOLUTION', 'ENGLISH', 1783, TRUE),

('DEATH', 'Everybody is going to be dead one day, just give them time.', 'NEIL DEGRASSI', 'TV SHOW: NOVA', 'ENGLISH', 2023, TRUE),

('DEATH', 'To the well-organized mind, death is but the next great adventure.', 'J.K ROWLING', 'BOOK: HARRY POTTER & THE SORCERER''S STONE', 'ENGLISH', 2015, TRUE),

('DEATH', 'If a man has not discovered something that he will die for, he isn''t fit to live.', 'MLK, JR.', 'LOCATION: ALABAMA', 'ENGLISH', 1955, FALSE),

('LIFE', 'Your time is limited, don''t waste it living someone else''s life."', 'STEVE JOBS', 'MAGAZINE: THE ROLLING STONE', 'ENGLISH', 1994, TRUE),

('LIFE', 'Learn as if you will live forever, live like you will die tomorrow: "Tamē hammēśa māṭē jīvaśō tēma śīkhō, ēvī rītē jīvō kē jēma tamē kālē marī jaśō"', 'MAHATMA GANDHI', 'LOCATION: INDIA', 'GUJARATI', 1908, FALSE),

('LIFE', 'Stay away from those people who try to disparage your ambitions. Small minds will always do that, but great minds will give you a feeling that you can become great too."', 'MARK TWAIN', 'BOOK: ADVICE TO YOUTH', 'ENGLISH', 1882, TRUE),

('FUNNY', 'Life is like a box of chocolates. You never know what you''re gonna get.', 'FORREST GUMP', 'MOVIE: FORREST GUMP', 'ENGLISH', 1994, TRUE),

('FUNNY', 'I have no special talent. I am only passionately curious: Ich habe kein besonderes Talent. Ich bin nur leidenschaftlich neugierig.', 'ALBERT EINSTEIN', 'NULL', 'GERMAN', NULL, TRUE),

('FUNNY', 'The older you get, the better you get, unless you''re a banana.', 'BETTY WHITE', 'SHOW: THE GOLDEN GIRLS', 'ENGLISH', 2016, TRUE),

('STRENGTH', 'Anything worth having does not come easy: "TODO LO QUE VALE LA PENA, NO SALE FÁCIL"', 'UNKNOWN', 'LOCATION: THE BRONX', 'SPANISH', NULL, TRUE),

('HOPE', 'Hope is that thing inside us that insists, despite all the evidence, that something better awaits us if we reach for it, work for it, and fight for it.', 'BARACK OBAMA', 'SPEECH: WHITE HOUSE', 'ENGLISH', 2012, TRUE),

('DETERMINATION', 'A dream doesn''t become reality through magic; it takes sweat, determination, and hard work.', 'COLIN POWELL', 'NULL', 'ENGLISH', 2007, TRUE),

('FRIENDSHIP', 'Friendship is the hardest thing in the world to explain.', 'MUHAMMAD ALI', 'NULL', 'ENGLISH', 2016, TRUE),

('TRUST', 'Trust is the glue to life. It''s the most essential ingredient in effective communication. It''s the foundational principle that holds all relationships.', 'STEPHEN COVEY', 'BOOK: FIRST THINGS FIRST', 'ENGLISH', 1995, TRUE),

('RELIGION', 'If God did not exist, we must invent him.', 'VOLTAIRE', 'NULL', 'ENGLISH', NULL, TRUE),

('RELIGION', 'No matter how strongly the wind of evil may blow, the flame of truth cannot be extinguished.', 'DALAI LAMA', 'NULL', 'ENGLISH', NULL, TRUE),

('RELIGION', 'Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.', 'BUDDHA', 'TEACHINGS', 'PALI', NULL, TRUE),

('INSPIRATIONAL', 'The only limit to our realization of tomorrow will be our doubts of today.', 'FRANKLIN D. ROOSEVELT', 'SPEECH: INAUGURAL ADDRESS', 'ENGLISH', 1933, TRUE),

('MOTIVATION', 'Success is not final, failure is not fatal: it is the courage to continue that counts.', 'WINSTON CHURCHILL', 'SPEECH: LORD MAYOR''S LUNCHEON', 'ENGLISH', 1942, TRUE),

('WISDOM', 'Not everything that is faced can be changed, but nothing can be changed until it is faced.', 'JAMES BALDWIN', 'BOOK: THE FIRE NEXT TIME', 'ENGLISH', 1963, TRUE),

('WISDOM', 'The greatest glory in living lies not in never falling, but in rising every time we fall.', 'NELSON MANDELA', 'AUTOBIOGRAPHY: LONG WALK TO FREEDOM', 'ENGLISH', 1994, TRUE),

('WISDOM', 'It does not matter how slowly you go as long as you do not stop.', 'CONFUCIUS', 'TEACHINGS', 'CHINESE', NULL, TRUE),

('PROVERB', 'धेरै चिनी तितो हुन्छ: Too much sugar is bitter.', 'UNKNOWN', 'FOLK WISDOM', 'NEPALI', NULL, TRUE),

('LOVE', 'Love is the only force capable of transforming an enemy into a friend.', 'MARTIN LUTHER KING JR.', 'BOOK: STRENGTH TO LOVE', 'ENGLISH', 1963, TRUE),

('LIFE', 'Life is either a daring adventure or nothing at all.', 'HELEN KELLER', 'BOOK: THE OPEN DOOR', 'ENGLISH', 1929, TRUE),

('FUNNY', 'I''m on a seafood diet. I see food, and I eat it.', 'UNKNOWN', 'NULL', 'ENGLISH', NULL, TRUE);

-- //run on terminal to run this files/ restart new
-- //psql -U postgres -f db/schema.sql
-- //psql -U postgres -f db/seed.sql

