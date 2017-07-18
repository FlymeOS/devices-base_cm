.class Lcom/android/internal/widget/SwipeDismissLayout$2;
.super Landroid/content/BroadcastReceiver;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SwipeDismissLayout$2$1;
    }
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout$2;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->mRunnable:Ljava/lang/Runnable;

    .line 91
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method
