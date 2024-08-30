`<h1>Subscribe to our music service</h1>

<%= form_tag subscriptions_path do %>
  <article>
    <label class="amount">
      <span>Amount: $9.99 per month</span>
    </label>
  </article>

  <script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
          data-key="<%= @stripe_publishable_key %>"
          data-description="Music Subscription"
          data-amount="999"
          data-locale="auto"></script>
<% end %>
 