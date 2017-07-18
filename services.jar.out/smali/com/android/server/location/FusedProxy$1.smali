.class Lcom/android/server/location/FusedProxy$1;
.super Ljava/lang/Object;
.source "FusedProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/FusedProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FusedProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/FusedProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/FusedProxy;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/location/FusedProxy$1;->this$0:Lcom/android/server/location/FusedProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/location/FusedProxy$1;->this$0:Lcom/android/server/location/FusedProxy;

    iget-object v1, p0, Lcom/android/server/location/FusedProxy$1;->this$0:Lcom/android/server/location/FusedProxy;

    invoke-static {v1}, Lcom/android/server/location/FusedProxy;->-get0(Lcom/android/server/location/FusedProxy;)Lcom/android/server/location/FusedLocationHardwareSecure;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/location/FusedProxy;->-wrap0(Lcom/android/server/location/FusedProxy;Landroid/hardware/location/IFusedLocationHardware;)V

    .line 60
    return-void
.end method
