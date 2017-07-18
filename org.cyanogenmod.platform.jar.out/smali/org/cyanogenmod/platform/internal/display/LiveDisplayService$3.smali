.class Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
    .line 508
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 510
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->-wrap0(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Z

    move-result v0

    .line 521
    .local v0, "screenOn":Z
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->-get9(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v1

    iget-boolean v1, v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    if-eq v0, v1, :cond_0

    .line 522
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->-get9(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v1

    iput-boolean v0, v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    .line 523
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    sget v2, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->DISPLAY_CHANGED:I

    invoke-static {v1, v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->-wrap7(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;I)V

    .line 518
    .end local v0    # "screenOn":Z
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 514
    return-void
.end method
