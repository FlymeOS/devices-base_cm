.class Lcom/android/internal/app/RecommendActivity$2;
.super Ljava/lang/Object;
.source "RecommendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/RecommendActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RecommendActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RecommendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/internal/app/RecommendActivity$2;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$2;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 246
    return-void
.end method
