.class Landroid/content/res/flymetheme/drawable/ClockDrawable$2;
.super Ljava/util/TimerTask;
.source "ClockDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/flymetheme/drawable/ClockDrawable;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/drawable/ClockDrawable;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/drawable/ClockDrawable;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable$2;->this$0:Landroid/content/res/flymetheme/drawable/ClockDrawable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable$2;->this$0:Landroid/content/res/flymetheme/drawable/ClockDrawable;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/drawable/ClockDrawable;->update()V

    .line 103
    return-void
.end method
