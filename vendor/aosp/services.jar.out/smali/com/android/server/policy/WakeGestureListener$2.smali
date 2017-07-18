.class Lcom/android/server/policy/WakeGestureListener$2;
.super Ljava/lang/Object;
.source "WakeGestureListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WakeGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/WakeGestureListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WakeGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/WakeGestureListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/policy/WakeGestureListener$2;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener$2;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/WakeGestureListener;->onWakeUp()V

    .line 96
    return-void
.end method
