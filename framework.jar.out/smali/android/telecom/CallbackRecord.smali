.class Landroid/telecom/CallbackRecord;
.super Ljava/lang/Object;
.source "CallbackRecord.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<TT;>;"
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/telecom/CallbackRecord;->mCallback:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Landroid/telecom/CallbackRecord;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<TT;>;"
    iget-object v0, p0, Landroid/telecom/CallbackRecord;->mCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<TT;>;"
    iget-object v0, p0, Landroid/telecom/CallbackRecord;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
