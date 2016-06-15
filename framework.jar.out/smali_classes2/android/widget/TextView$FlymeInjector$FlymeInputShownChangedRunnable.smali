.class final Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInputShownChangedRunnable"
.end annotation


# instance fields
.field private mInputShownChangeListener:Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;

.field private mShown:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;Z)V
    .locals 0
    .param p1, "inputShownChangeListener"    # Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;
    .param p2, "shown"    # Z

    .prologue
    .line 10148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10149
    iput-object p1, p0, Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;->mInputShownChangeListener:Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;

    .line 10150
    iput-boolean p2, p0, Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;->mShown:Z

    .line 10151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10155
    iget-object v0, p0, Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;->mInputShownChangeListener:Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;

    iget-boolean v1, p0, Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;->mShown:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;->onInputShownChanged(Z)V

    .line 10156
    return-void
.end method
