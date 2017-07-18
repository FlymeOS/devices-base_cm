.class Landroid/content/res/flymetheme/drawable/ClockDrawable$1$1;
.super Ljava/lang/Object;
.source "ClockDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/flymetheme/drawable/ClockDrawable$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/res/flymetheme/drawable/ClockDrawable$1;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/drawable/ClockDrawable$1;)V
    .locals 0
    .param p1, "this$1"    # Landroid/content/res/flymetheme/drawable/ClockDrawable$1;

    .prologue
    .line 43
    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1$1;->this$1:Landroid/content/res/flymetheme/drawable/ClockDrawable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1$1;->this$1:Landroid/content/res/flymetheme/drawable/ClockDrawable$1;

    iget-object v0, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;->this$0:Landroid/content/res/flymetheme/drawable/ClockDrawable;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/drawable/ClockDrawable;->invalidateSelf()V

    .line 45
    return-void
.end method
