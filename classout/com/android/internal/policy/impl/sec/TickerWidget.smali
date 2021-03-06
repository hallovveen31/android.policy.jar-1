.class public Lcom/android/internal/policy/impl/sec/TickerWidget;
.super Landroid/widget/FrameLayout;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/TickerWidget$16;,
        Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final DBG_FB:Z = true

.field private static final TAG:Ljava/lang/String; = "TickerWidget"

.field private static final TICKER_FAILED_MSG_SHOWING_TIME:I = 0x7d0

.field private static final TICKER_REFRESH_WAITING_TIME:I = 0xea60


# instance fields
.field private final MAX_RETRIAL_CNT_WHEN_NO_DATA:I

.field private final MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

.field private final MSG_SHOW_NEWS_REFRESH_FAILED:I

.field private final MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

.field private final MSG_SHOW_PREVIOUS_NEWS_DATA:I

.field private final MSG_SHOW_PREVIOUS_STOCK_DATA:I

.field private final MSG_SHOW_STOCK_REFRESH_FAILED:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentFacebookData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNewsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStockData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookOnClickListener:Landroid/view/View$OnClickListener;

.field protected mFacebookRefreshing:Z

.field private mHandleArrowImage:Landroid/widget/ImageView;

.field private mHandleLogoImage:Landroid/widget/ImageView;

.field private mHandleProgressBar:Landroid/widget/ProgressBar;

.field private mHandleRefreshImage:Landroid/widget/ImageView;

.field private mHandleUpdateDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

.field private mIsDataReady:Z

.field private mIsFacebookInstalled:Z

.field private mIsFacebookLogin:Z

.field private mIsFacebookRefreshFailed:Z

.field private mIsNewsRefreshFailed:Z

.field private mIsRefreshingPossible:Z

.field private mIsStockRefreshFailed:Z

.field private mNewsOnClickListener:Landroid/view/View$OnClickListener;

.field protected mNewsRefreshing:Z

.field private mOrientation:I

.field private mRetrialCntWhenNoData:I

.field private mSinaweiboOnClickListener:Landroid/view/View$OnClickListener;

.field private mStockOnClickListener:Landroid/view/View$OnClickListener;

.field private mStockRefreshing:Z

.field mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

.field private mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

.field private mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

.field private mTickerStatus:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field private mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

.field private mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 12
    .parameter "context"
    .parameter "configuration"
    .parameter "callback"
    .parameter "unlockWidget"
    .parameter "updateMonitor"

    .prologue
    const/4 v5, 0x1

    .line 298
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MAX_RETRIAL_CNT_WHEN_NO_DATA:I

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    .line 95
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_NEWS_REFRESH_FAILED:I

    .line 96
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_STOCK_REFRESH_FAILED:I

    .line 97
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_PREVIOUS_NEWS_DATA:I

    .line 98
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_PREVIOUS_STOCK_DATA:I

    .line 99
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

    .line 100
    const/16 v2, 0x12c5

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

    .line 105
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$1;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    .line 300
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 301
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 302
    if-eqz p4, :cond_3c

    .line 303
    check-cast p4, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local p4
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .line 305
    :cond_3c
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setFocusable(Z)V

    .line 306
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setFocusableInTouchMode(Z)V

    .line 307
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setDescendantFocusability(I)V

    .line 309
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mOrientation:I

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 313
    const-string v2, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    :cond_5b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_191

    .line 315
    const-string v2, "com.sec.android.daemonapp.ap.sinanews.intent.action.SNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    :goto_6b
    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 329
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_198

    .line 330
    const v2, 0x1090066

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 334
    :goto_8e
    const v2, 0x1020318

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    .line 335
    const v2, 0x1020321

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    .line 336
    const v2, 0x1020319

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    .line 338
    const v2, 0x102031b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    .line 339
    const v2, 0x102031c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    .line 340
    const v2, 0x1020320

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v4, 0x1040751

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    const v2, 0x102031f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    .line 343
    const v2, 0x102031d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 346
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$3;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    .line 370
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$4;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    .line 394
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$5;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    .line 424
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 425
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$6;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mSinaweiboOnClickListener:Landroid/view/View$OnClickListener;

    .line 451
    :cond_11b
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$7;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;)V

    .line 482
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$8;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;)V

    .line 506
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$9;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;)V

    .line 528
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$10;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$11;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$12;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$13;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$13;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 566
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$14;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$14;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 575
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$15;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$15;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 595
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V

    .line 596
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V

    .line 597
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V

    .line 599
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->getSettingProperies()V

    .line 601
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateTickerData()V

    .line 603
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setSlidingSpeed()V

    .line 604
    return-void

    .line 319
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_191
    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 332
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_198
    const v2, 0x1090069

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_8e
.end method

.method private UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V
    .registers 14
    .parameter "status"

    .prologue
    .line 955
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 956
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 958
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v9, v10, :cond_1d

    .line 959
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    if-nez v9, :cond_3d

    .line 960
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 961
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    .line 969
    :cond_1d
    :goto_1d
    if-nez v0, :cond_47

    .line 970
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_25

    .line 971
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    .line 979
    :cond_25
    :goto_25
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerStatus:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    .line 981
    sget-object v9, Lcom/android/internal/policy/impl/sec/TickerWidget$16;->$SwitchMap$com$android$internal$policy$impl$sec$TickerUtil$TickerStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_198

    .line 1043
    :goto_32
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    if-eqz v9, :cond_16f

    .line 1044
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    :goto_3c
    return-void

    .line 963
    :cond_3d
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    if-nez v9, :cond_1d

    .line 964
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 965
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    goto :goto_1d

    .line 973
    :cond_47
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_25

    .line 974
    :cond_53
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_25

    .line 975
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    goto :goto_25

    .line 983
    :pswitch_5a
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 984
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 985
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getNewsUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto :goto_32

    .line 990
    :pswitch_7f
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040692

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, newsNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v7}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 992
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto :goto_32

    .line 995
    .end local v7           #newsNoDataMessage:Ljava/lang/String;
    :pswitch_93
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040694

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 996
    .local v6, newsNoCountry:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 997
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto :goto_32

    .line 1000
    .end local v6           #newsNoCountry:Ljava/lang/String;
    :pswitch_a9
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1001
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1002
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getStockUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto/16 :goto_32

    .line 1006
    :pswitch_c9
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040695

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1007
    .local v8, stockNoItem:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 1008
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto/16 :goto_32

    .line 1011
    .end local v8           #stockNoItem:Ljava/lang/String;
    :pswitch_e0
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1012
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1013
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getFacebookUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto/16 :goto_32

    .line 1018
    :pswitch_106
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040692

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1019
    .local v2, facebookNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 1020
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto/16 :goto_32

    .line 1023
    .end local v2           #facebookNoDataMessage:Ljava/lang/String;
    :pswitch_11b
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104069c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1024
    .local v5, messageLogin:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v5, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 1025
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto/16 :goto_32

    .line 1028
    .end local v5           #messageLogin:Ljava/lang/String;
    :pswitch_132
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104069d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1029
    .local v4, messageInstalled:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 1030
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto/16 :goto_32

    .line 1033
    .end local v4           #messageInstalled:Ljava/lang/String;
    :pswitch_149
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040696

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v9, v10, :cond_161

    .line 1035
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104069b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1037
    :cond_161
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v3, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 1038
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    goto/16 :goto_32

    .line 1046
    .end local v3           #message:Ljava/lang/String;
    :cond_16f
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1047
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setVisibility(I)V

    .line 1048
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1049
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1050
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setBottomOffset(I)V

    .line 1051
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_3c

    .line 981
    nop

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_7f
        :pswitch_93
        :pswitch_a9
        :pswitch_c9
        :pswitch_e0
        :pswitch_106
        :pswitch_11b
        :pswitch_132
        :pswitch_149
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showNewsRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showStockRefreshFailed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/sec/TickerWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookInstalled()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousNewsData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestTickerDataToDemon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousStockData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showFacebookRefreshFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousFacebookData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerStatus:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateTickerData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z

    return v0
.end method

.method private getSettingProperies()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1058
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contents_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1059
    .local v1, tickertype:I
    packed-switch v1, :pswitch_data_3e

    .line 1074
    :goto_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sliding_speed"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1075
    .local v0, tickerSpeed:I
    packed-switch v0, :pswitch_data_48

    .line 1088
    :goto_1f
    return-void

    .line 1061
    .end local v0           #tickerSpeed:I
    :pswitch_20
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    goto :goto_10

    .line 1064
    :pswitch_25
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    goto :goto_10

    .line 1067
    :pswitch_2a
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    goto :goto_10

    .line 1077
    .restart local v0       #tickerSpeed:I
    :pswitch_2f
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    goto :goto_1f

    .line 1080
    :pswitch_34
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    goto :goto_1f

    .line 1083
    :pswitch_39
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    goto :goto_1f

    .line 1059
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_25
        :pswitch_2a
    .end packed-switch

    .line 1075
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method private requestFacebookDataToDemon()V
    .registers 3

    .prologue
    .line 1159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1162
    return-void
.end method

.method private requestNewsDataToDemon()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1173
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1174
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sn_daemon_service_key_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1d

    .line 1175
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :goto_1c
    return-void

    .line 1177
    :cond_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.ap.sinanews.intent.ACTION_GET_NEWSLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinanews"

    const-string v3, "com.sec.android.daemonapp.ap.sinanews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1181
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1c

    .line 1184
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_36
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "yh_daemon_service_key_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4c

    .line 1185
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1187
    :cond_4c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1190
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v3, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .restart local v0       #component:Landroid/content/ComponentName;
    :goto_62
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1197
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1c

    .line 1191
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_6b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1192
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.camobile"

    const-string v3, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_62

    .line 1194
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_7b
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v3, "com.sec.android.daemonapp.ap.yahoonews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_62
.end method

.method private requestSinaweiboDataToDemon()V
    .registers 3

    .prologue
    .line 1167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1170
    return-void
.end method

.method private requestStockDataToDemon()V
    .registers 9

    .prologue
    .line 1203
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1208
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_d
    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1209
    const-string v6, "TickerWidget"

    const-string v7, "Yahoo daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.yahoostock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1213
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 1239
    .end local v0           #component:Landroid/content/ComponentName;
    :goto_2b
    return-void

    .line 1214
    :catch_2c
    move-exception v1

    .line 1215
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :try_start_34
    const-string v6, "com.sec.android.daemonapp.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1219
    const-string v6, "TickerWidget"

    const-string v7, "Edaily  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.stockclock"

    const-string v7, "com.sec.android.daemonapp.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1223
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_52} :catch_53

    goto :goto_2b

    .line 1224
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_53
    move-exception v2

    .line 1225
    .local v2, e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Edaily  daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :try_start_5b
    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1229
    const-string v6, "TickerWidget"

    const-string v7, "Sina  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.sinastock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1233
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_79} :catch_7a

    goto :goto_2b

    .line 1234
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_7a
    move-exception v3

    .line 1235
    .local v3, e3:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private requestTickerDataToDemon()V
    .registers 9

    .prologue
    const/16 v7, 0x12c4

    const/16 v6, 0x12c1

    const/16 v5, 0x12c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1111
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v1, v2, :cond_38

    .line 1113
    const-string v1, "TickerWidget"

    const-string v2, "Request news data update!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestNewsDataToDemon()V

    .line 1115
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    .line 1116
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 1119
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1120
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1121
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1122
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1154
    .end local v0           #msg:Landroid/os/Message;
    :cond_37
    :goto_37
    return-void

    .line 1124
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v1, v2, :cond_68

    .line 1126
    const-string v1, "TickerWidget"

    const-string v2, "Request stock data update!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestStockDataToDemon()V

    .line 1128
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    .line 1129
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z

    .line 1132
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1133
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1134
    :cond_59
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1135
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_37

    .line 1136
    .end local v0           #msg:Landroid/os/Message;
    :cond_68
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v1, v2, :cond_37

    .line 1138
    const-string v1, "TickerWidget"

    const-string v2, "Request facebook data update!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1140
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestSinaweiboDataToDemon()V

    .line 1144
    :goto_7e
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookRefreshing:Z

    .line 1145
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 1148
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1149
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1150
    :cond_8f
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1151
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_37

    .line 1142
    .end local v0           #msg:Landroid/os/Message;
    :cond_9e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestFacebookDataToDemon()V

    goto :goto_7e
.end method

.method private setSlidingSpeed()V
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setSlidingSpeed(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;)V

    .line 735
    return-void
.end method

.method private showFacebookRefreshFailed()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c5

    .line 664
    const-string v2, "TickerWidget"

    const-string v3, "Facebook Update was failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 667
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 669
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 671
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 677
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 679
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 680
    return-void
.end method

.method private showNewsRefreshFailed()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c2

    .line 683
    const-string v2, "TickerWidget"

    const-string v3, "News Update was failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 688
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 690
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 696
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 698
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 699
    return-void
.end method

.method private showPreviousFacebookData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 624
    :cond_17
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookRefreshing:Z

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 628
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 629
    return-void
.end method

.method private showPreviousNewsData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 636
    :cond_17
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 641
    return-void
.end method

.method private showPreviousStockData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 611
    :cond_17
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 617
    return-void
.end method

.method private showStockRefreshFailed()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c3

    .line 644
    const-string v2, "TickerWidget"

    const-string v3, "Stock Update was failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 649
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z

    .line 651
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 656
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 657
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 659
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 661
    return-void
.end method

.method private updateFacebookData()V
    .registers 6

    .prologue
    .line 790
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v3, 0x10804a0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 791
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v4, 0x104074e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 795
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookInstalled()V

    .line 798
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookLoginChecked()V

    .line 800
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 802
    .local v0, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;>;"
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 803
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 804
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    .line 805
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 823
    :goto_3b
    return-void

    .line 808
    :cond_3c
    const-string v2, "TickerWidget"

    const-string v3, "There is no data"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_74

    .line 812
    const-string v2, "TickerWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rcnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 817
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    .line 820
    .end local v1           #intent:Landroid/content/Intent;
    :cond_74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 821
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_3b
.end method

.method private updateFacebookInstalled()V
    .registers 8

    .prologue
    .line 752
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 754
    .local v4, packagemanager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2040

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 758
    .local v0, allPackageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 759
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 760
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.facebook.katana"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 761
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 763
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_30
    return-void

    .line 767
    :cond_31
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 769
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private updateFacebookLoginChecked()V
    .registers 4

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 775
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_1a

    .line 777
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 779
    const-string v1, "TickerWidget"

    const-string v2, "login successful"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_19
    return-void

    .line 782
    :cond_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 784
    const-string v1, "TickerWidget"

    const-string v2, "updateFacebookLoginChecked() : login failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private updateNewsData()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 891
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 892
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108049a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 904
    :goto_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x104074f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 909
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 911
    :cond_2c
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6d

    .line 912
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 913
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    .line 914
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 926
    :cond_3e
    :goto_3e
    return-void

    .line 894
    .end local v0           #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    :cond_3f
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 895
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080498

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 897
    :cond_4e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 898
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080496

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 901
    :cond_5d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080499

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 902
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f

    .line 915
    .restart local v0       #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    :cond_6d
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7d

    .line 916
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 917
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_3e

    .line 918
    :cond_7d
    if-nez v0, :cond_3e

    .line 919
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 920
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 923
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_3e
.end method

.method private updateSinaweiboData()V
    .registers 4

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108049b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 865
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mSinaweiboOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateSinaweiboInstalled()V

    .line 871
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateSinaweiboLoginChecked()V

    .line 873
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 875
    .local v0, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;>;"
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 876
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 877
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    .line 878
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 886
    :goto_2d
    return-void

    .line 881
    :cond_2e
    const-string v1, "TickerWidget"

    const-string v2, "There is no data"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 884
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_2d
.end method

.method private updateSinaweiboInstalled()V
    .registers 8

    .prologue
    .line 826
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 828
    .local v4, packagemanager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2040

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 832
    .local v0, allPackageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 833
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 834
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.sina.weibo"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 835
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 837
    const-string v5, "TickerWidget"

    const-string v6, "isSinaweiboInstalled() : true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_30
    return-void

    .line 841
    :cond_31
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 843
    const-string v5, "TickerWidget"

    const-string v6, "isSinaweiboInstalled() : false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private updateSinaweiboLoginChecked()V
    .registers 4

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.sns3.sinaweibo"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 849
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_1a

    .line 851
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 853
    const-string v1, "TickerWidget"

    const-string v2, "login successful"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_19
    return-void

    .line 856
    :cond_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 858
    const-string v1, "TickerWidget"

    const-string v2, "updateSinaweiboLoginChecked() : login failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private updateStockData()V
    .registers 5

    .prologue
    .line 931
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 932
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108049f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 939
    :goto_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040750

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getStockData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 943
    .local v0, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_54

    .line 944
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 945
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    .line 946
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 951
    :goto_34
    return-void

    .line 933
    .end local v0           #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    :cond_35
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 934
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x10804a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 936
    :cond_44
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x10804a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 937
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e

    .line 948
    .restart local v0       #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    :cond_54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 949
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_34
.end method

.method private updateTickerData()V
    .registers 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_a

    .line 739
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateNewsData()V

    .line 749
    :cond_9
    :goto_9
    return-void

    .line 740
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_14

    .line 741
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateStockData()V

    goto :goto_9

    .line 742
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_9

    .line 743
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 744
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateSinaweiboData()V

    goto :goto_9

    .line 746
    :cond_24
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookData()V

    goto :goto_9
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 1106
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->cleanUp()V

    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->cleanUp()V

    .line 1108
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 708
    const-string v0, "TickerWidget"

    const-string v1, "onKeyDown at TickerWidget"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 721
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 713
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose()V

    goto :goto_e

    .line 710
    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public getMinTickerHeights()I
    .registers 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    if-nez v0, :cond_6

    .line 1243
    const/4 v0, 0x0

    .line 1245
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getMinTickerHeights()I

    move-result v0

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->onPause()V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->onPause()V

    .line 1099
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->onResume()V

    .line 1093
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->onResume()V

    .line 1094
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_17

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose()V

    .line 728
    const/4 v0, 0x1

    .line 730
    :goto_16
    return v0

    :cond_17
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method public startAutoScroll()V
    .registers 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    .line 1254
    return-void
.end method

.method public stopAutoScroll()V
    .registers 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 1250
    return-void
.end method
