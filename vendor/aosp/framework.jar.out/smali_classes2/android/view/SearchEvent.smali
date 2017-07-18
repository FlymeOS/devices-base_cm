.class public Landroid/view/SearchEvent;
.super Ljava/lang/Object;
.source "SearchEvent.java"


# instance fields
.field private mInputDevice:Landroid/view/InputDevice;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "inputDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/view/SearchEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 29
    return-void
.end method


# virtual methods
.method public getInputDevice()Landroid/view/InputDevice;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/view/SearchEvent;->mInputDevice:Landroid/view/InputDevice;

    return-object v0
.end method
