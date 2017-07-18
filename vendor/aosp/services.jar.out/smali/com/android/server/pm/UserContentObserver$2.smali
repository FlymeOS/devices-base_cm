.class Lcom/android/server/pm/UserContentObserver$2;
.super Ljava/lang/Object;
.source "UserContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserContentObserver;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserContentObserver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserContentObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserContentObserver;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/pm/UserContentObserver$2;->this$0:Lcom/android/server/pm/UserContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/pm/UserContentObserver$2;->this$0:Lcom/android/server/pm/UserContentObserver;

    invoke-virtual {v0}, Lcom/android/server/pm/UserContentObserver;->update()V

    .line 59
    return-void
.end method
