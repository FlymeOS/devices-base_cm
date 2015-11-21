.class Lcom/android/server/location/GpsLocationProvider$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V

    .line 502
    return-void
.end method
