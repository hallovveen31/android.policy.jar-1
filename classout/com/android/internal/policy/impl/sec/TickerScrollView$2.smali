.class Lcom/android/internal/policy/impl/sec/TickerScrollView$2;
.super Ljava/lang/Object;
.source "TickerScrollView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;

    .line 167
    .local v3, stockData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4b

    .line 168
    const-string v0, ""

    .line 169
    .local v0, defaultStockUrl:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMTRDevice()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 170
    const-string v0, "http://m.yahoo.com/finance?.tsrc=metrosfw"

    .line 173
    :goto_16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 177
    .end local v0           #defaultStockUrl:Ljava/lang/String;
    .local v4, uri:Landroid/net/Uri;
    :goto_1a
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_54

    .line 184
    :goto_2d
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 186
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/sec/TickerCallback;->goToUnlockScreen()V

    .line 188
    :cond_47
    return-void

    .line 172
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v0       #defaultStockUrl:Ljava/lang/String;
    :cond_48
    const-string v0, "http://m.yahoo.com/samsungwi/finance"

    goto :goto_16

    .line 176
    .end local v0           #defaultStockUrl:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_1a

    .line 181
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_54
    move-exception v1

    .line 182
    .local v1, e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dismissKeyguard remoteException"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method
