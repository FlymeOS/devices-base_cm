.class Lcom/android/server/location/GpsLocationProvider$14;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$14;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$14;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    .line 2218
    return-void
.end method
