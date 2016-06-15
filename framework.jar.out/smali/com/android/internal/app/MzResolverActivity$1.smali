.class Lcom/android/internal/app/MzResolverActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$1;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$1;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity;->access$000(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->handlePackagesChanged()V

    .line 148
    return-void
.end method
