.class Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$RotationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$RotationWatcher;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    .prologue
    .line 5165
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;->this$1:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5167
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;->this$1:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->dispatchRotationChanged()V

    .line 5166
    return-void
.end method
