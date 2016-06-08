.class Lcom/android/server/GestureManagerService$3;
.super Ljava/lang/Object;
.source "GestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GestureManagerService;->triggerGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureManagerService;

.field final synthetic val$type_l:I


# direct methods
.method constructor <init>(Lcom/android/server/GestureManagerService;I)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/GestureManagerService$3;->this$0:Lcom/android/server/GestureManagerService;

    iput p2, p0, Lcom/android/server/GestureManagerService$3;->val$type_l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/GestureManagerService$3;->this$0:Lcom/android/server/GestureManagerService;

    iget v1, p0, Lcom/android/server/GestureManagerService$3;->val$type_l:I

    # invokes: Lcom/android/server/GestureManagerService;->notifyListeners(I)V
    invoke-static {v0, v1}, Lcom/android/server/GestureManagerService;->access$500(Lcom/android/server/GestureManagerService;I)V

    .line 201
    return-void
.end method
