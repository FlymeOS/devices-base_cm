.class Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;
.super Landroid/content/BroadcastReceiver;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->-get6(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->-wrap2(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->setMode(I)Z

    .line 359
    return-void
.end method
