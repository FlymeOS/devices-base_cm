.class Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;
.super Ljava/lang/Object;
.source "ColorTemperatureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->-wrap0(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)V

    .line 171
    return-void
.end method
