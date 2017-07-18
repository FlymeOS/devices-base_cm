.class Lcom/android/internal/app/RecommendActivity$3;
.super Ljava/lang/Object;
.source "RecommendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/RecommendActivity;->initRecommendAppItemView()Landroid/view/View;
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
    .line 545
    iput-object p1, p0, Lcom/android/internal/app/RecommendActivity$3;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$3;->this$0:Lcom/android/internal/app/RecommendActivity;

    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity$3;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-static {v1}, Lcom/android/internal/app/RecommendActivity;->-get6(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/RecommendActivity;->openAppDetail(Ljava/lang/String;)V

    .line 547
    return-void
.end method
