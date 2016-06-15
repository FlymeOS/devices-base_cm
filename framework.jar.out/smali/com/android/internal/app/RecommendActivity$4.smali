.class Lcom/android/internal/app/RecommendActivity$4;
.super Ljava/lang/Object;
.source "RecommendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/RecommendActivity;->initMstoreItemView()Landroid/view/View;
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

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->isInternational:Z
    invoke-static {v0}, Lcom/android/internal/app/RecommendActivity;->access$500(Lcom/android/internal/app/RecommendActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z
    invoke-static {v0}, Lcom/android/internal/app/RecommendActivity;->access$600(Lcom/android/internal/app/RecommendActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/app/RecommendActivity;->access$700(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/app/RecommendActivity;->access$800(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/app/RecommendActivity;->launchGooglePlaySearch(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/RecommendActivity;->access$900(Lcom/android/internal/app/RecommendActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/app/RecommendActivity;->access$1000(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/app/RecommendActivity;->access$700(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$4;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/app/RecommendActivity;->access$800(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/RecommendActivity;->launchAppCenterSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
