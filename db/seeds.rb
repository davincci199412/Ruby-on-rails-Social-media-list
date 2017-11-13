=begin

# Generate fake data
# --------------------------------------
# @author phonpanom
# @description  Generate fake data for testing
# @version  1.0
#---------------------------------------
# @last edit 11/06/2017
# @by phonpanom
#
=end

Client.destroy_all

Client.create!([{
                        id: 1,
                        first_name: "Micky",
                        last_name: "Martin",
                        email: "AntMan@gmail.com",
                        detail: "will save the world.",
                    },
                    {
                        id: 2,
                        first_name: "Hiran",
                        last_name: "Mondol",
                        email: "Hiran@gmail.com",
                        detail: "plan and pull off a heist that will save the world.",
                    }])

p "Created #{Client.count} Clients"

Legislator.destroy_all

Legislator.create!([{
                      id: 1,
                      first_name: "Ant",
                      last_name: "Man",
                      facebook_id: "AntMan@gmail.com",
                      twitter_id: "AntMan@gmail.com",
                      detail: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
                  },
                  {
                      id: 2,
                      first_name: "Hiran",
                      last_name: "Mondol",
                      facebook_id: "Hiran@gmail.com",
                      twitter_id: "HiranTweeter@gmail.com",
                      detail: "Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
                  },
                  {
                      id: 3,
                      first_name: "Hossin",
                      last_name: "Rami",
                      facebook_id: "Hossin@gmail.com",
                      twitter_id: "Rami@gmail.com",
                      detail: "Organize the bachelor party. Don't be shy about enlisting other groomsmen to help you out -- most guys don't mind this duty! Put financial worries out of your mind -- the cost should be split among everyone who attends the bash. ",
                  },
                  {
                      id: 4,
                      first_name: "Ramalho",
                      last_name: "Dacosta",
                      facebook_id: "Ramalho@gmail.com",
                      twitter_id: "Ramalho@gmail.com",
                      detail: "Stand beside the groom at the altar and keep the bride's ring until vows are exchanged. Find a safe place for the ring (and triple check that your pockets don't have holes) -- you don't want to fumble around when it's time to whip it out. ",
                  }])

p "Created #{Legislator.count} Legislators"

Post.destroy_all

Post.create!([{
                  social: "facebook",
                  link: "https://www.facebook.com/mimi.rafita?hc_ref=ARQFKo2SNQbb877YNsJqZuXI25AxzSZUnfc33W-T_Wj3Vbp3svfXCngjHZ_pJkmo5OE",
                  customer_name: "Ant Man",
                  customer_id: "AntMan@gmail.com",
                  posted_datetime: "2017-11-1 10:12:05",
                  post_content: "Give the officiant a sealed envelope with his or her fee (the groom's responsibility) just after the ceremony.
                                  You may be announced with the maid of honor when the reception begins.
                                  Dance with both the honor attendant and the bride during the wedding party dances.
                                  Give the first toast to the bride and groom at the reception. This is your biggest -- and probably most frightening -- duty. Read our article about how to give a toast, and remember the cardinal rule: Mum's the word on the bachelor bacchanalia.
                                  Collect any gift envelopes guests bring to the reception. You may be asked to deposit them in the couple's bank account or at least to keep them until the couple returns from their honeymoon. ",
              },
              {
                  social: "twitter",
                  link: "https://twitter.com/Michael5SOS/status/926642464278155265",
                  posted_datetime: "2017-9-16 05:18:05",
                  customer_name: "Ant Man",
                  customer_id: "AntMan@gmail.com",
                  post_content: "Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",

              },
              {
                  social: "facebook",
                  link: "https://www.facebook.com/mimi.rafita?hc_ref=ARQFKo2SNQbb877YNsJqZuXI25AxzSZUnfc33W-T_Wj3Vbp3svfXCngjHZ_pJkmo5OE",
                  posted_datetime: "2017-10-2 10:12:05",
                  customer_name: "Ant Man",
                  customer_id: "AntMan@gmail.com",
                  post_content: "As best man, you may think you're just a glorified groomsman, but guess what? You actually have special responsibilities -- you'll be a combination valet and hand-holder as you help the groom come through this nerve-racking experience with flying colors. As leader of the groom's posse, you'll:",
              },
              {
                  social: "twitter",
                  link: "https://twitter.com/Michael5SOS/status/926642464278155265",
                  posted_datetime: "2017-9-3 11:18:05",
                  customer_name: "Ant Man",
                  customer_id: "AntMan@gmail.com",
                  post_content: "You've been there for him through thick and thin (like that time in college -- yeah, that time). This wedding won't be any different. Here's what to know when you're a best man.",
              },
              {
                  social: "facebook",
                  link: "https://www.facebook.com/mimi.rafita?hc_ref=ARQFKo2SNQbb877YNsJqZuXI25AxzSZUnfc33W-T_Wj3Vbp3svfXCngjHZ_pJkmo5OE",
                  posted_datetime: "2017-10-1 03:12:05",
                  customer_name: "Hiran Mondol",
                  customer_id: "Hiran@gmail.com",
                  post_content: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
              },
              {
                  social: "twitter",
                  link: "https://twitter.com/Michael5SOS/status/926642464278155265",
                  posted_datetime: "2017-8-1 05:18:05",
                  customer_name: "Hiran Mondol",
                  customer_id: "HiranTweeter@gmail.com",
                  post_content: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
              },
              {
                  social: "facebook",
                  link: "https://www.facebook.com/mimi.rafita?hc_ref=ARQFKo2SNQbb877YNsJqZuXI25AxzSZUnfc33W-T_Wj3Vbp3svfXCngjHZ_pJkmo5OE",
                  posted_datetime: "2017-6-2 02:12:05",
                  customer_name: "Hossin Rami",
                  customer_id: "Hossin@gmail.com",
                  post_content: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
              },
              {
                  social: "twitter",
                  link: "https://twitter.com/Michael5SOS/status/926642464278155265",
                  posted_datetime: "2017-8-3 5:18:05",
                  customer_name: "Hossin Rami",
                  customer_id: "Rami@gmail.com",
                  post_content: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
              },
              {
                  social: "twitter",
                  link: "https://twitter.com/Michael5SOS/status/926642464278155265",
                  posted_datetime: "2017-8-3 5:18:05",
                  customer_name: "Ramalho Dacosta",
                  customer_id: "Ramalho@gmail.com",
                  post_content: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
              }])

p "Created #{Post.count} Posts"
