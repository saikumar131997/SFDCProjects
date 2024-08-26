import { LightningElement } from 'lwc';
import PortfolioAssets from '@salesforce/resourceUrl/PortfolioAssets'
export default class PortfolioBanner extends LightningElement {
   
    mapMarkers = [
        {
            location: {
                City: 'Hyderabad',
                Country: 'India',
                PostalCode: '500001',
                State: 'Hyderabad',
                Street: 'Nampally',
            },
            value: 'location001',
            title: 'The Landmark Building',
            description:
                'The Landmark is considered to be one of the city&#39;s most architecturally distinct and historic properties', //escape the apostrophe in the string using &#39;
            icon: 'standard:account',
        },
    ];

    linkedinUrl = 'https://www.linkedin.com/'
    twitterUrl = 'https://twitter.com/'
    githubUrl = 'https://github.com/'
    youtubeUrl = 'https://youtube.com/'
    trailheadUrl = 'https://trailblazer.me/'
    blogUrl = 'https://www.google.com/'


    userPic = `${PortfolioAssets}/PortfolioAssets/userPic.jpeg`
    linkedin = `${PortfolioAssets}/PortfolioAssets/Social/linkedin.svg`
    youtube = `${PortfolioAssets}/PortfolioAssets/Social/youtube.svg`
    github = `${PortfolioAssets}/PortfolioAssets/Social/github.svg`
    twitter = `${PortfolioAssets}/PortfolioAssets/Social/twitter.svg`
    trailhead = `${PortfolioAssets}/PortfolioAssets/Social/trailhead1.svg`
    blog = `${PortfolioAssets}/PortfolioAssets/Social/blogger.svg`

}