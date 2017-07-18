.class abstract Lcom/android/server/shrinker/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Shrinker"


# instance fields
.field protected mScanner:Lcom/android/server/shrinker/RootScanner;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/shrinker/RootScanner;)V
    .locals 0
    .param p1, "scanner"    # Lcom/android/server/shrinker/RootScanner;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/server/shrinker/Scanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract scan()V
.end method
