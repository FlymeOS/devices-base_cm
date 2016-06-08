.class Lcom/android/server/wm/MzDragState$5;
.super Ljava/lang/Object;
.source "MzDragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MzDragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MzDragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MzDragState;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$5;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$5;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-virtual {v0}, Lcom/android/server/wm/MzDragState;->mzUnRegisterReceivers()V

    .line 509
    return-void
.end method
