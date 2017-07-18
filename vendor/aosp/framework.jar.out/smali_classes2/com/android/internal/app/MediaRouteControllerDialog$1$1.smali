.class Lcom/android/internal/app/MediaRouteControllerDialog$1$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerDialog$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/MediaRouteControllerDialog$1;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/MediaRouteControllerDialog$1;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$1;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get3(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$1;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->-set0(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerDialog$1;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-wrap1(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 146
    :cond_0
    return-void
.end method
