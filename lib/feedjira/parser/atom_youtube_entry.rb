# rubocop:disable Style/Documentation
module Feedjira
  module Parser
    class AtomYoutubeEntry
      include SAXMachine
      include FeedEntryUtilities

      element :title
      element :link, as: :url, value: :href, with: { rel: 'alternate' }
      element :name, as: :author
      element :"media:description", as: :content
      element :summary
      element :published
      element :id, as: :entry_id
      element :updated
      element :"yt:videoId", as: :youtube_video_id
      element :"media:title", as: :media_title
      element :"media:content", as: :media_url, value: :url
      element :"media:content", as: :media_type, value: :type
      element :"media:content", as: :media_width, value: :width
      element :"media:content", as: :media_height, value: :height
      element :"media:thumbnail", value: :url, as: :image
      element :"media:thumbnail", value: :width, as: :image_width
      element :"media:thumbnail", value: :height, as: :image_height
      element :"media:starRating", as: :media_star_count, value: :count
      element :"media:starRating", as: :media_star_average, value: :average
      element :"media:statistics", as: :media_views, value: :views
    end
  end
end
